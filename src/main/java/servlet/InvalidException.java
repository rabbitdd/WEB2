package servlet;

public class InvalidException extends Exception {
    @Override
    public String getMessage() {
        return "BAD REQUEST";
    }
}
