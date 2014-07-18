.class public Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
.super Ljava/lang/Object;
.source "HarvestConfiguration.java"


# static fields
.field private static final DEFAULT_ACTIVITY_TRACE_LENGTH:I = 0xfffe

.field private static final DEFAULT_ACTIVITY_TRACE_MAX_REPORT_ATTEMPTS:I = 0x1

.field private static final DEFAULT_ACTIVITY_TRACE_MIN_UTILIZATION:F = 0.3f

.field private static final DEFAULT_ERROR_LIMIT:I = 0x32

.field private static final DEFAULT_MAX_TRANSACTION_AGE:I = 0x258

.field private static final DEFAULT_MAX_TRANSACTION_COUNT:I = 0x3e8

.field private static final DEFAULT_REPORT_PERIOD:I = 0x3c

.field private static final DEFAULT_RESPONSE_BODY_LIMIT:I = 0x800

.field private static final DEFAULT_STACK_TRACE_LIMIT:I = 0x64

.field private static defaultHarvestConfiguration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;


# instance fields
.field private activity_trace_max_report_attempts:I

.field private activity_trace_max_size:I

.field private activity_trace_min_utilization:D

.field private at_capture:Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

.field private collect_network_errors:Z

.field private cross_process_id:Ljava/lang/String;

.field private data_report_period:I

.field private data_token:[I

.field private error_limit:I

.field private report_max_transaction_age:I

.field private report_max_transaction_count:I

.field private response_body_limit:I

.field private server_timestamp:J

.field private stack_trace_limit:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setDefaultValues()V

    .line 41
    return-void
.end method

.method public static getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->defaultHarvestConfiguration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    if-eqz v0, :cond_7

    .line 60
    sget-object v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->defaultHarvestConfiguration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 62
    :goto_6
    return-object v0

    .line 61
    :cond_7
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->defaultHarvestConfiguration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 62
    sget-object v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->defaultHarvestConfiguration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 213
    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    .line 238
    :cond_4
    :goto_4
    return v0

    .line 214
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_4

    move-object v1, p1

    .line 216
    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 218
    .local v1, "that":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    iget-boolean v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->collect_network_errors:Z

    iget-boolean v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->collect_network_errors:Z

    if-ne v4, v5, :cond_4

    .line 219
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_report_period:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_report_period:I

    if-ne v4, v5, :cond_4

    .line 220
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->error_limit:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->error_limit:I

    if-ne v4, v5, :cond_4

    .line 221
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_age:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_age:I

    if-ne v4, v5, :cond_4

    .line 222
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_count:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_count:I

    if-ne v4, v5, :cond_4

    .line 223
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->response_body_limit:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->response_body_limit:I

    if-ne v4, v5, :cond_4

    .line 224
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->stack_trace_limit:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->stack_trace_limit:I

    if-ne v4, v5, :cond_4

    .line 225
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_size:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_size:I

    if-ne v4, v5, :cond_4

    .line 226
    iget v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_report_attempts:I

    iget v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_report_attempts:I

    if-ne v4, v5, :cond_4

    .line 227
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    if-nez v4, :cond_52

    iget-object v4, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 228
    :cond_52
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    if-eqz v4, :cond_5a

    iget-object v4, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 229
    :cond_5a
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    iget-object v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    :cond_68
    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_min_utilization:D

    double-to-int v4, v4

    mul-int/lit8 v3, v4, 0x64

    .line 233
    .local v3, "thisMinUtil":I
    iget-wide v4, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_min_utilization:D

    double-to-int v4, v4

    mul-int/lit8 v2, v4, 0x64

    .line 234
    .local v2, "thatMinUtil":I
    if-ne v3, v2, :cond_4

    .line 237
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    iget-object v5, v1, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 238
    .local v0, "dataTokenEqual":Z
    goto :goto_4
.end method

.method public getActivity_trace_max_report_attempts()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_report_attempts:I

    return v0
.end method

.method public getActivity_trace_max_size()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_size:I

    return v0
.end method

.method public getActivity_trace_min_utilization()D
    .registers 3

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_min_utilization:D

    return-wide v0
.end method

.method public getAt_capture()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->at_capture:Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    return-object v0
.end method

.method public getCross_process_id()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;
    .registers 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    if-nez v0, :cond_6

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/newrelic/agent/android/harvest/DataToken;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v1, v1

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/newrelic/agent/android/harvest/DataToken;-><init>(JJ)V

    goto :goto_5
.end method

.method public getData_report_period()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_report_period:I

    return v0
.end method

.method public getData_token()[I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    return-object v0
.end method

.method public getError_limit()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->error_limit:I

    return v0
.end method

.method public getReportMaxTransactionAgeMilliseconds()J
    .registers 5

    .prologue
    .line 168
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_age:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReport_max_transaction_age()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_age:I

    return v0
.end method

.method public getReport_max_transaction_count()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_count:I

    return v0
.end method

.method public getResponse_body_limit()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->response_body_limit:I

    return v0
.end method

.method public getServer_timestamp()J
    .registers 3

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->server_timestamp:J

    return-wide v0
.end method

.method public getStack_trace_limit()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->stack_trace_limit:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-boolean v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->collect_network_errors:Z

    if-eqz v4, :cond_71

    const/4 v0, 0x1

    .line 247
    .local v0, "result":I
    :goto_6
    mul-int/lit8 v5, v0, 0x1f

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_12
    add-int v0, v5, v4

    .line 248
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_report_period:I

    add-int v0, v4, v5

    .line 249
    mul-int/lit8 v5, v0, 0x1f

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    :goto_26
    add-int v0, v5, v4

    .line 250
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->error_limit:I

    add-int v0, v4, v5

    .line 251
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_age:I

    add-int v0, v4, v5

    .line 252
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_count:I

    add-int v0, v4, v5

    .line 253
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->response_body_limit:I

    add-int v0, v4, v5

    .line 254
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->stack_trace_limit:I

    add-int v0, v4, v5

    .line 255
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_size:I

    add-int v0, v4, v5

    .line 256
    mul-int/lit8 v4, v0, 0x1f

    iget v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_report_attempts:I

    add-int v0, v4, v5

    .line 257
    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_min_utilization:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 258
    .local v1, "temp":J
    mul-int/lit8 v4, v0, 0x1f

    const/16 v5, 0x20

    ushr-long v5, v1, v5

    xor-long/2addr v5, v1

    long-to-int v5, v5

    add-int v0, v4, v5

    .line 259
    mul-int/lit8 v4, v0, 0x1f

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->at_capture:Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    if-eqz v5, :cond_6e

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->at_capture:Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_6e
    add-int v0, v4, v3

    .line 260
    return v0

    .end local v0    # "result":I
    .end local v1    # "temp":J
    :cond_71
    move v0, v3

    .line 246
    goto :goto_6

    .restart local v0    # "result":I
    :cond_73
    move v4, v3

    .line 247
    goto :goto_12

    :cond_75
    move v4, v3

    .line 249
    goto :goto_26
.end method

.method public isCollect_network_errors()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->collect_network_errors:Z

    return v0
.end method

.method public reconfigure(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .registers 4
    .param p1, "configuration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->isCollect_network_errors()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setCollect_network_errors(Z)V

    .line 68
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getCross_process_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 69
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getCross_process_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setCross_process_id(Ljava/lang/String;)V

    .line 71
    :cond_14
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_report_period()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_report_period(I)V

    .line 73
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DataToken;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 74
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_token()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_token([I)V

    .line 76
    :cond_2c
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getError_limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setError_limit(I)V

    .line 77
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_age()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_age(I)V

    .line 78
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_count()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_count(I)V

    .line 79
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getResponse_body_limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setResponse_body_limit(I)V

    .line 80
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getServer_timestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setServer_timestamp(J)V

    .line 81
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getStack_trace_limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setStack_trace_limit(I)V

    .line 82
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_min_utilization()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setActivity_trace_min_utilization(D)V

    .line 84
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_max_report_attempts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setActivity_trace_max_report_attempts(I)V

    .line 85
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getAt_capture()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 86
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getAt_capture()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setAt_capture(Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;)V

    .line 87
    :cond_71
    return-void
.end method

.method public setActivity_trace_max_report_attempts(I)V
    .registers 2
    .param p1, "activity_trace_max_report_attempts"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_report_attempts:I

    .line 141
    return-void
.end method

.method public setActivity_trace_max_size(I)V
    .registers 2
    .param p1, "activity_trace_max_size"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_size:I

    .line 137
    return-void
.end method

.method public setActivity_trace_min_utilization(D)V
    .registers 3
    .param p1, "activity_trace_min_utilization"    # D

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_min_utilization:D

    .line 209
    return-void
.end method

.method public setAt_capture(Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;)V
    .registers 2
    .param p1, "at_capture"    # Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->at_capture:Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    .line 201
    return-void
.end method

.method public setCollect_network_errors(Z)V
    .registers 2
    .param p1, "collect_network_errors"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->collect_network_errors:Z

    .line 91
    return-void
.end method

.method public setCross_process_id(Ljava/lang/String;)V
    .registers 2
    .param p1, "cross_process_id"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setData_report_period(I)V
    .registers 2
    .param p1, "data_report_period"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_report_period:I

    .line 99
    return-void
.end method

.method public setData_token([I)V
    .registers 2
    .param p1, "data_token"    # [I

    .prologue
    .line 102
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    .line 103
    return-void
.end method

.method public setDefaultValues()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_token([I)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setCollect_network_errors(Z)V

    .line 46
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setData_report_period(I)V

    .line 47
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setError_limit(I)V

    .line 48
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setResponse_body_limit(I)V

    .line 49
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setStack_trace_limit(I)V

    .line 50
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_age(I)V

    .line 51
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setReport_max_transaction_count(I)V

    .line 52
    const v0, 0xfffe

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setActivity_trace_max_size(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setActivity_trace_max_report_attempts(I)V

    .line 54
    const-wide v0, 0x3fd3333340000000L

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setActivity_trace_min_utilization(D)V

    .line 55
    invoke-static {}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->defaultActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->setAt_capture(Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;)V

    .line 56
    return-void
.end method

.method public setError_limit(I)V
    .registers 2
    .param p1, "error_limit"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->error_limit:I

    .line 113
    return-void
.end method

.method public setReport_max_transaction_age(I)V
    .registers 2
    .param p1, "report_max_transaction_age"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_age:I

    .line 117
    return-void
.end method

.method public setReport_max_transaction_count(I)V
    .registers 2
    .param p1, "report_max_transaction_count"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_count:I

    .line 121
    return-void
.end method

.method public setResponse_body_limit(I)V
    .registers 2
    .param p1, "response_body_limit"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->response_body_limit:I

    .line 125
    return-void
.end method

.method public setServer_timestamp(J)V
    .registers 3
    .param p1, "server_timestamp"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->server_timestamp:J

    .line 129
    return-void
.end method

.method public setStack_trace_limit(I)V
    .registers 2
    .param p1, "stack_trace_limit"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->stack_trace_limit:I

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HarvestConfiguration{collect_network_errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->collect_network_errors:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cross_process_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->cross_process_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data_report_period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_report_period:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->data_token:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->error_limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", report_max_transaction_age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", report_max_transaction_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->report_max_transaction_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", response_body_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->response_body_limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", server_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->server_timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stack_trace_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->stack_trace_limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activity_trace_max_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activity_trace_max_report_attempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_max_report_attempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", activity_trace_min_utilization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->activity_trace_min_utilization:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", at_capture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->at_capture:Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
