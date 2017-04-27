class Status

    ATIVA = "ativa"
    INATIVA = "inativa"
    RASCUNHO = "rascunho"

    def self.getList
        [Status::ATIVA, Status::INATIVA, Status::RASCUNHO]
    end

end