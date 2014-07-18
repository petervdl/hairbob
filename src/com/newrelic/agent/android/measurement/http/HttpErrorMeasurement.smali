.class public Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;
.super Lcom/newrelic/agent/android/measurement/BaseMeasurement;
.source "HttpErrorMeasurement.java"


# instance fields
.field private httpStatusCode:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseBody:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpStatusCode"    # I

    .prologue
    .line 19
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setUrl(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setName(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setHttpStatusCode(I)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setStartTime(J)V

    .line 24
    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->httpStatusCode:I

    return v0
.end method

.method public getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpStatusCode(I)V
    .registers 2
    .param p1, "httpStatusCode"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->httpStatusCode:I

    .line 32
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->params:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->responseBody:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .registers 2
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->stackTrace:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->url:Ljava/lang/String;

    .line 28
    return-void
.end method
