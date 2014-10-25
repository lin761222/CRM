
package com.uuu.model;

public class CRMException extends Exception {

    /**
     * Creates a new instance of <code>CRMException</code> without detail
     * message.
     */
    public CRMException() {
    }

    /**
     * Constructs an instance of <code>CRMException</code> with the specified
     * detail message.
     *
     * @param msg the detail message.
     */
    public CRMException(String msg) {
        super(msg);
    }
}
