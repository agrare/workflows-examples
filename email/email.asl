{
  "Comment": "An example of using the builtin scheme.",
  "StartAt": "FirstState",
  "States": {
    "FirstState": {
      "Type": "Task",
      "Resource": "builtin://email",
      "Parameters": {
        "To": "$.to",
        "From": "$.from",
        "Subject": "$.subject",
	"Body": "$.body",
	"Attachment": "$.attachment"
      },
      "Next": "SuccessState"
    },
    "SuccessState": {
      "Type": "Succeed"
    }
  }
}
