.class public Lcom/google/i18n/phonenumbers/NumberParseException;
.super Ljava/lang/Exception;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;
    }
.end annotation


# instance fields
.field private errorType:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V
    .registers 3
    .param p1, "errorType"    # Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/NumberParseException;->errorType:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 49
    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/NumberParseException;->errorType:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/NumberParseException;->errorType:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/NumberParseException;->message:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Error type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
