package servlet;

public interface Validation {
    public abstract boolean isValid(String x, String y, String r) throws InvalidException;
}
