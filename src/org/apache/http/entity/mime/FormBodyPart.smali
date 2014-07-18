.class public Lorg/apache/http/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final body:Lorg/apache/http/entity/mime/content/ContentBody;

.field private final header:Lorg/apache/http/entity/mime/Header;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "Body"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/http/entity/mime/FormBodyPart;->body:Lorg/apache/http/entity/mime/content/ContentBody;

    .line 55
    new-instance v0, Lorg/apache/http/entity/mime/Header;

    invoke-direct {v0}, Lorg/apache/http/entity/mime/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->header:Lorg/apache/http/entity/mime/Header;

    .line 57
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 58
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentType(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateTransferEncoding(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string/jumbo v0, "Field name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->header:Lorg/apache/http/entity/mime/Header;

    new-instance v1, Lorg/apache/http/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/Header;->addField(Lorg/apache/http/entity/mime/MinimalField;)V

    .line 77
    return-void
.end method

.method protected generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 5
    .param p1, "body"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 85
    const-string/jumbo v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_31
    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected generateContentType(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 6
    .param p1, "body"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 94
    instance-of v2, p1, Lorg/apache/http/entity/mime/content/AbstractContentBody;

    if-eqz v2, :cond_18

    move-object v2, p1

    .line 95
    check-cast v2, Lorg/apache/http/entity/mime/content/AbstractContentBody;

    invoke-virtual {v2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;->getContentType()Lorg/apache/http/entity/ContentType;

    move-result-object v1

    .line 99
    .local v1, "contentType":Lorg/apache/http/entity/ContentType;
    :goto_b
    if-eqz v1, :cond_1a

    .line 100
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_17
    return-void

    .line 97
    .end local v1    # "contentType":Lorg/apache/http/entity/ContentType;
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "contentType":Lorg/apache/http/entity/ContentType;
    goto :goto_b

    .line 102
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 105
    const-string/jumbo v2, "; charset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_39
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected generateTransferEncoding(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4
    .param p1, "body"    # Lorg/apache/http/entity/mime/content/ContentBody;

    .prologue
    .line 113
    const-string/jumbo v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public getBody()Lorg/apache/http/entity/mime/content/ContentBody;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->body:Lorg/apache/http/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lorg/apache/http/entity/mime/Header;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->header:Lorg/apache/http/entity/mime/Header;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
