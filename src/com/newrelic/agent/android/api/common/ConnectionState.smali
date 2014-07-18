.class public final Lcom/newrelic/agent/android/api/common/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"


# static fields
.field public static final NULL:Lcom/newrelic/agent/android/api/common/ConnectionState;


# instance fields
.field private final collectingNetworkErrors:Z

.field private final crossProcessId:Ljava/lang/String;

.field private final dataToken:Ljava/lang/Object;

.field private final errorLimit:I

.field private final harvestInterval:J

.field private final harvestIntervalTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private final maxTransactionAge:J

.field private final maxTransactionAgeTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private final maxTransactionCount:J

.field private final responseBodyLimit:I

.field private final serverTimestamp:J

.field private final stackTraceLimit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/newrelic/agent/android/api/common/ConnectionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/api/common/ConnectionState;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/api/common/ConnectionState;->NULL:Lcom/newrelic/agent/android/api/common/ConnectionState;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->dataToken:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->crossProcessId:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->serverTimestamp:J

    .line 28
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestInterval:J

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestIntervalTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 30
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAge:J

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAgeTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 32
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionCount:J

    .line 33
    const/16 v0, 0x32

    iput v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->stackTraceLimit:I

    .line 34
    const/16 v0, 0x400

    iput v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->responseBodyLimit:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->collectingNetworkErrors:Z

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->errorLimit:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;JIIZI)V
    .registers 18
    .param p1, "dataToken"    # Ljava/lang/Object;
    .param p2, "crossProcessId"    # Ljava/lang/String;
    .param p3, "serverTimestamp"    # J
    .param p5, "harvestInterval"    # J
    .param p7, "harvestIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "maxTransactionAge"    # J
    .param p10, "maxTransactionAgeTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p11, "maxTransactionCount"    # J
    .param p13, "stackTraceLimit"    # I
    .param p14, "responseBodyLimit"    # I
    .param p15, "collectingNetworkerrors"    # Z
    .param p16, "errorLimit"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->dataToken:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->crossProcessId:Ljava/lang/String;

    .line 55
    iput-wide p3, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->serverTimestamp:J

    .line 56
    iput-wide p5, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestInterval:J

    .line 57
    iput-object p7, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestIntervalTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 58
    iput-wide p8, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAge:J

    .line 59
    iput-object p10, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAgeTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 60
    iput-wide p11, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionCount:J

    .line 61
    iput p13, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->stackTraceLimit:I

    .line 62
    iput p14, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->responseBodyLimit:I

    .line 63
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->collectingNetworkErrors:Z

    .line 64
    move/from16 v0, p16

    iput v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->errorLimit:I

    .line 65
    return-void
.end method


# virtual methods
.method public getCrossProcessId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->crossProcessId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataToken()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->dataToken:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorLimit()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->errorLimit:I

    return v0
.end method

.method public getHarvestIntervalInMilliseconds()J
    .registers 5

    .prologue
    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestInterval:J

    iget-object v3, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestIntervalTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHarvestIntervalInSeconds()J
    .registers 5

    .prologue
    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestInterval:J

    iget-object v3, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->harvestIntervalTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionAgeInMilliseconds()J
    .registers 5

    .prologue
    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAge:J

    iget-object v3, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAgeTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionAgeInSeconds()J
    .registers 5

    .prologue
    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAge:J

    iget-object v3, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionAgeTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxTransactionCount()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->maxTransactionCount:J

    return-wide v0
.end method

.method public getResponseBodyLimit()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->responseBodyLimit:I

    return v0
.end method

.method public getServerTimestamp()J
    .registers 3

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->serverTimestamp:J

    return-wide v0
.end method

.method public getStackTraceLimit()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->stackTraceLimit:I

    return v0
.end method

.method public isCollectingNetworkErrors()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->collectingNetworkErrors:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/newrelic/agent/android/api/common/ConnectionState;->dataToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
