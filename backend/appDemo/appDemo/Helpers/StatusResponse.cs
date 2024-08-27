namespace appDemo.Helpers
{
    public class StatusResponse
    {
        public string Status { set; get; }
        public string Message { set; get; }

        public StatusResponse(string status)
        {
            if ("401".Equals(status))
                Message = "Unauthorized access. Login required";

            Status = status;
        }

        public StatusResponse(string code, string message)
        {
            Status = code;
            Message = message;
        }

        public StatusResponse()
        {
        }

        public override string ToString()
        {
            return Status + ":" + Message;
        }
    }
}
