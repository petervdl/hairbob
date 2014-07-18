.class public final Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;
.super Ljava/lang/Object;
.source "HttpRequestEntityImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private final impl:Lorg/apache/http/HttpEntity;

.field private final transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V
    .registers 3
    .param p1, "impl"    # Lorg/apache/http/HttpEntity;
    .param p2, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    .line 22
    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 23
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 38
    return-void

    .line 30
    :catch_6
    move-exception v13

    .line 31
    .local v13, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v0, v13}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 32
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_43

    .line 33
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v14

    .line 34
    .local v14, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v2

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v3

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v10

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 36
    .end local v14    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_43
    throw v13
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isSent()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 44
    new-instance v15, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v15, "stream":Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 49
    .end local v15    # "stream":Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;
    :goto_1c
    return-object v15

    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_26
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_24} :catch_6a

    move-result-object v15

    goto :goto_1c

    .line 52
    :catch_26
    move-exception v14

    .line 53
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v1, v14}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 54
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_69

    .line 55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v16

    .line 56
    .local v16, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v9

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v11

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 58
    .end local v16    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_69
    throw v14

    .line 60
    .end local v14    # "e":Ljava/io/IOException;
    :catch_6a
    move-exception v14

    .line 61
    .local v14, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v1, v14}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v16

    .line 64
    .restart local v16    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v9

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v11

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 66
    .end local v16    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_ad
    throw v14
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public streamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .registers 6
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;

    .line 125
    .local v0, "source":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;
    invoke-interface {v0, p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 126
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesSent(J)V

    .line 127
    return-void
.end method

.method public streamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .registers 17
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;

    .line 132
    .local v13, "source":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;
    invoke-interface {v13, p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 133
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 134
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_52

    .line 135
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesSent(J)V

    .line 136
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v14

    .line 137
    .local v14, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v2

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v3

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v10

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 139
    .end local v14    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_52
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 19
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isSent()Z

    move-result v1

    if-nez v1, :cond_24

    .line 104
    new-instance v15, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v15, "stream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v1, v15}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v15}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesSent(J)V

    .line 120
    .end local v15    # "stream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :goto_23
    return-void

    .line 109
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_23

    .line 112
    :catch_2e
    move-exception v14

    .line 113
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v1, v14}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_71

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpRequestEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v16

    .line 116
    .local v16, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v9

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v11

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 118
    .end local v16    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_71
    throw v14
.end method
