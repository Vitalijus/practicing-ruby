require "date"

class EmailReport < Report
    def email_header
        "Dear Customer,\n\n" +
        "This report shows your activity as of #{Date.today}"
    end

    def email_banner
        "\n\n...........................................................\n\n"
    end

    def formatted_output
        email_header + email_banner + super + email_banner + email_footer
    end

    def email_footer
        "\nThank you for being with us"
    end
end