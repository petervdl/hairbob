.class public final enum Lcom/newrelic/agent/android/metric/MetricUnit;
.super Ljava/lang/Enum;
.source "MetricUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newrelic/agent/android/metric/MetricUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/metric/MetricUnit;

.field public static final enum BYTES:Lcom/newrelic/agent/android/metric/MetricUnit;

.field public static final enum BYTES_PER_SECOND:Lcom/newrelic/agent/android/metric/MetricUnit;

.field public static final enum OPERATIONS:Lcom/newrelic/agent/android/metric/MetricUnit;

.field public static final enum PERCENT:Lcom/newrelic/agent/android/metric/MetricUnit;

.field public static final enum SECONDS:Lcom/newrelic/agent/android/metric/MetricUnit;


# instance fields
.field private label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/newrelic/agent/android/metric/MetricUnit;

    const-string/jumbo v1, "PERCENT"

    const-string/jumbo v2, "%"

    invoke-direct {v0, v1, v3, v2}, Lcom/newrelic/agent/android/metric/MetricUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/metric/MetricUnit;->PERCENT:Lcom/newrelic/agent/android/metric/MetricUnit;

    .line 5
    new-instance v0, Lcom/newrelic/agent/android/metric/MetricUnit;

    const-string/jumbo v1, "BYTES"

    const-string/jumbo v2, "bytes"

    invoke-direct {v0, v1, v4, v2}, Lcom/newrelic/agent/android/metric/MetricUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/metric/MetricUnit;->BYTES:Lcom/newrelic/agent/android/metric/MetricUnit;

    .line 6
    new-instance v0, Lcom/newrelic/agent/android/metric/MetricUnit;

    const-string/jumbo v1, "SECONDS"

    const-string/jumbo v2, "sec"

    invoke-direct {v0, v1, v5, v2}, Lcom/newrelic/agent/android/metric/MetricUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/metric/MetricUnit;->SECONDS:Lcom/newrelic/agent/android/metric/MetricUnit;

    .line 7
    new-instance v0, Lcom/newrelic/agent/android/metric/MetricUnit;

    const-string/jumbo v1, "BYTES_PER_SECOND"

    const-string/jumbo v2, "bytes/second"

    invoke-direct {v0, v1, v6, v2}, Lcom/newrelic/agent/android/metric/MetricUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/metric/MetricUnit;->BYTES_PER_SECOND:Lcom/newrelic/agent/android/metric/MetricUnit;

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/metric/MetricUnit;

    const-string/jumbo v1, "OPERATIONS"

    const-string/jumbo v2, "op"

    invoke-direct {v0, v1, v7, v2}, Lcom/newrelic/agent/android/metric/MetricUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/newrelic/agent/android/metric/MetricUnit;->OPERATIONS:Lcom/newrelic/agent/android/metric/MetricUnit;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/newrelic/agent/android/metric/MetricUnit;

    sget-object v1, Lcom/newrelic/agent/android/metric/MetricUnit;->PERCENT:Lcom/newrelic/agent/android/metric/MetricUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/metric/MetricUnit;->BYTES:Lcom/newrelic/agent/android/metric/MetricUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/metric/MetricUnit;->SECONDS:Lcom/newrelic/agent/android/metric/MetricUnit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/newrelic/agent/android/metric/MetricUnit;->BYTES_PER_SECOND:Lcom/newrelic/agent/android/metric/MetricUnit;

    aput-object v1, v0, v6

    sget-object v1, Lcom/newrelic/agent/android/metric/MetricUnit;->OPERATIONS:Lcom/newrelic/agent/android/metric/MetricUnit;

    aput-object v1, v0, v7

    sput-object v0, Lcom/newrelic/agent/android/metric/MetricUnit;->$VALUES:[Lcom/newrelic/agent/android/metric/MetricUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/newrelic/agent/android/metric/MetricUnit;->label:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/MetricUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/newrelic/agent/android/metric/MetricUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/metric/MetricUnit;

    return-object v0
.end method

.method public static values()[Lcom/newrelic/agent/android/metric/MetricUnit;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/newrelic/agent/android/metric/MetricUnit;->$VALUES:[Lcom/newrelic/agent/android/metric/MetricUnit;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/metric/MetricUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/metric/MetricUnit;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/MetricUnit;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/newrelic/agent/android/metric/MetricUnit;->label:Ljava/lang/String;

    .line 22
    return-void
.end method
