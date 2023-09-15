import org.junit.runner.Description;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunListener;

import java.io.FileWriter;
import java.io.IOException;

public class CustomTestListener extends RunListener {
    private FileWriter fileWriter;

    public CustomTestListener() {
        try {
            // Создаем файл для записи результатов тестов
            fileWriter = new FileWriter("test-classes.txt");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void testStarted(Description description) throws Exception {
        // Тест начался, записываем информацию в файл
        String testName = description.getMethodName();
        long startTime = System.currentTimeMillis();
        fileWriter.write("Test started: " + testName + "\n");
        // Здесь вы можете записать дополнительную информацию о тесте
    }

    @Override
    public void testFinished(Description description) throws Exception {
        // Тест завершился, записываем информацию о завершении
        long endTime = System.currentTimeMillis();
        long startTime = System.currentTimeMillis();
        long duration = endTime - startTime;
        String testName = description.getMethodName();
        fileWriter.write("Test finished: " + testName + "\n");
        fileWriter.write("Duration: " + duration + " milliseconds\n");
        fileWriter.write("\n");
    }

    @Override
    public void testFailure(Failure failure) throws Exception {
        // Тест завершился неудачно, записываем информацию о провале
        String testName = failure.getDescription().getMethodName();
        String exceptionMessage = failure.getException().getMessage();
        fileWriter.write("Test failed: " + testName + "\n");
        fileWriter.write("Failure message: " + exceptionMessage + "\n");
        fileWriter.write("\n");
    }

    @Override
    public void testRunFinished(Result result) throws Exception {
        // Все тесты завершились, закрываем файл
        fileWriter.close();
    }
}
