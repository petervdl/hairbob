.class public final enum Lcom/newrelic/agent/android/util/NetworkFailure;
.super Ljava/lang/Enum;
.source "NetworkFailure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newrelic/agent/android/util/NetworkFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/util/NetworkFailure;

.field public static final enum BadServerResponse:Lcom/newrelic/agent/android/util/NetworkFailure;

.field public static final enum BadURL:Lcom/newrelic/agent/android/util/NetworkFailure;

.field public static final enum CannotConnectToHost:Lcom/newrelic/agent/android/util/NetworkFailure;

.field public static final enum DNSLookupFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

.field public static final enum SecureConnectionFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

.field public static final enum TimedOut:Lcom/newrelic/agent/android/util/NetworkFailure;

.field public static final enum Unknown:Lcom/newrelic/agent/android/util/NetworkFailure;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    const-string/jumbo v1, "Unknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/newrelic/agent/android/util/NetworkFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->Unknown:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 16
    new-instance v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    const-string/jumbo v1, "BadURL"

    const/16 v2, -0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/newrelic/agent/android/util/NetworkFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->BadURL:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 17
    new-instance v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    const-string/jumbo v1, "TimedOut"

    const/16 v2, -0x3e9

    invoke-direct {v0, v1, v6, v2}, Lcom/newrelic/agent/android/util/NetworkFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->TimedOut:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 18
    new-instance v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    const-string/jumbo v1, "CannotConnectToHost"

    const/16 v2, -0x3ec

    invoke-direct {v0, v1, v7, v2}, Lcom/newrelic/agent/android/util/NetworkFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->CannotConnectToHost:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 19
    new-instance v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    const-string/jumbo v1, "DNSLookupFailed"

    const/16 v2, -0x3ee

    invoke-direct {v0, v1, v8, v2}, Lcom/newrelic/agent/android/util/NetworkFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->DNSLookupFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 20
    new-instance v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    const-string/jumbo v1, "BadServerResponse"

    const/4 v2, 0x5

    const/16 v3, -0x3f3

    invoke-direct {v0, v1, v2, v3}, Lcom/newrelic/agent/android/util/NetworkFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->BadServerResponse:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 21
    new-instance v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    const-string/jumbo v1, "SecureConnectionFailed"

    const/4 v2, 0x6

    const/16 v3, -0x4b0

    invoke-direct {v0, v1, v2, v3}, Lcom/newrelic/agent/android/util/NetworkFailure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->SecureConnectionFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/newrelic/agent/android/util/NetworkFailure;

    sget-object v1, Lcom/newrelic/agent/android/util/NetworkFailure;->Unknown:Lcom/newrelic/agent/android/util/NetworkFailure;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/util/NetworkFailure;->BadURL:Lcom/newrelic/agent/android/util/NetworkFailure;

    aput-object v1, v0, v5

    sget-object v1, Lcom/newrelic/agent/android/util/NetworkFailure;->TimedOut:Lcom/newrelic/agent/android/util/NetworkFailure;

    aput-object v1, v0, v6

    sget-object v1, Lcom/newrelic/agent/android/util/NetworkFailure;->CannotConnectToHost:Lcom/newrelic/agent/android/util/NetworkFailure;

    aput-object v1, v0, v7

    sget-object v1, Lcom/newrelic/agent/android/util/NetworkFailure;->DNSLookupFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/newrelic/agent/android/util/NetworkFailure;->BadServerResponse:Lcom/newrelic/agent/android/util/NetworkFailure;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/newrelic/agent/android/util/NetworkFailure;->SecureConnectionFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

    aput-object v2, v0, v1

    sput-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->$VALUES:[Lcom/newrelic/agent/android/util/NetworkFailure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/newrelic/agent/android/util/NetworkFailure;->errorCode:I

    .line 27
    return-void
.end method

.method public static exceptionToErrorCode(Ljava/lang/Exception;)I
    .registers 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/newrelic/agent/android/util/NetworkFailure;->exceptionToNetworkFailure(Ljava/lang/Exception;)Lcom/newrelic/agent/android/util/NetworkFailure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/util/NetworkFailure;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public static exceptionToNetworkFailure(Ljava/lang/Exception;)Lcom/newrelic/agent/android/util/NetworkFailure;
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 30
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->Unknown:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 32
    .local v0, "error":Lcom/newrelic/agent/android/util/NetworkFailure;
    instance-of v1, p0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_9

    .line 33
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->DNSLookupFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

    .line 46
    :cond_8
    :goto_8
    return-object v0

    .line 34
    :cond_9
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_11

    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_14

    .line 35
    :cond_11
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->TimedOut:Lcom/newrelic/agent/android/util/NetworkFailure;

    goto :goto_8

    .line 36
    :cond_14
    instance-of v1, p0, Ljava/net/ConnectException;

    if-eqz v1, :cond_1b

    .line 37
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->CannotConnectToHost:Lcom/newrelic/agent/android/util/NetworkFailure;

    goto :goto_8

    .line 38
    :cond_1b
    instance-of v1, p0, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_22

    .line 39
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->BadURL:Lcom/newrelic/agent/android/util/NetworkFailure;

    goto :goto_8

    .line 40
    :cond_22
    instance-of v1, p0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_29

    .line 41
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->SecureConnectionFailed:Lcom/newrelic/agent/android/util/NetworkFailure;

    goto :goto_8

    .line 42
    :cond_29
    instance-of v1, p0, Lorg/apache/http/client/HttpResponseException;

    if-nez v1, :cond_31

    instance-of v1, p0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v1, :cond_8

    .line 43
    :cond_31
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->BadServerResponse:Lcom/newrelic/agent/android/util/NetworkFailure;

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/util/NetworkFailure;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/util/NetworkFailure;

    return-object v0
.end method

.method public static values()[Lcom/newrelic/agent/android/util/NetworkFailure;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/newrelic/agent/android/util/NetworkFailure;->$VALUES:[Lcom/newrelic/agent/android/util/NetworkFailure;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/util/NetworkFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/util/NetworkFailure;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/newrelic/agent/android/util/NetworkFailure;->errorCode:I

    return v0
.end method
