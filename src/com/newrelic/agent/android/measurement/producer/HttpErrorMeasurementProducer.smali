.class public Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;
.super Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;
.source "HttpErrorMeasurementProducer.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 14
    return-void
.end method

.method private getSanitizedStackTrace()Ljava/lang/String;
    .registers 7

    .prologue
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v3, "stackTrace":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 46
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 47
    .local v2, "numErrors":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v5, v4

    if-ge v1, v5, :cond_34

    .line 48
    aget-object v0, v4, v1

    .line 49
    .local v0, "frame":Ljava/lang/StackTraceElement;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->shouldFilterStackTraceElement(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 50
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-gt v1, v5, :cond_2c

    .line 52
    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 55
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getStackTraceLimit()I

    move-result v5

    if-lt v2, v5, :cond_39

    .line 60
    .end local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 47
    .restart local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private shouldFilterStackTraceElement(Ljava/lang/StackTraceElement;)Z
    .registers 6
    .param p1, "element"    # Ljava/lang/StackTraceElement;

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "method":Ljava/lang/String;
    const-string/jumbo v3, "com.newrelic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 76
    :cond_12
    :goto_12
    return v2

    .line 70
    :cond_13
    const-string/jumbo v3, "dalvik.system.VMStack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string/jumbo v3, "getThreadStackTrace"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 73
    :cond_25
    const-string/jumbo v3, "java.lang.Thread"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string/jumbo v3, "getStackTrace"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 76
    :cond_37
    const/4 v2, 0x0

    goto :goto_12
.end method


# virtual methods
.method public produceMeasurement(Ljava/lang/String;I)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 17
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public produceMeasurement(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 22
    return-void
.end method

.method public produceMeasurement(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/newrelic/agent/android/measurement/ThreadInfo;

    invoke-direct {v5}, Lcom/newrelic/agent/android/measurement/ThreadInfo;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/newrelic/agent/android/measurement/ThreadInfo;)V

    .line 26
    return-void
.end method

.method public produceMeasurement(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .registers 9
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;
    .param p5, "threadInfo"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/newrelic/agent/android/measurement/ThreadInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/newrelic/agent/android/util/Util;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 39
    :goto_6
    return-void

    .line 33
    :cond_7
    new-instance v0, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;

    invoke-direct {v0, v1, p2}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;-><init>(Ljava/lang/String;I)V

    .line 34
    .local v0, "measurement":Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;
    invoke-virtual {v0, p5}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setThreadInfo(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V

    .line 35
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->getSanitizedStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setStackTrace(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p3}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setResponseBody(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p4}, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;->setParams(Ljava/util/Map;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/HttpErrorMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    goto :goto_6
.end method
