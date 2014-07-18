.class public final enum Lcom/newrelic/agent/android/measurement/MeasurementType;
.super Ljava/lang/Enum;
.source "MeasurementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newrelic/agent/android/measurement/MeasurementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/measurement/MeasurementType;

.field public static final enum Activity:Lcom/newrelic/agent/android/measurement/MeasurementType;

.field public static final enum Any:Lcom/newrelic/agent/android/measurement/MeasurementType;

.field public static final enum Custom:Lcom/newrelic/agent/android/measurement/MeasurementType;

.field public static final enum HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

.field public static final enum Machine:Lcom/newrelic/agent/android/measurement/MeasurementType;

.field public static final enum Method:Lcom/newrelic/agent/android/measurement/MeasurementType;

.field public static final enum Network:Lcom/newrelic/agent/android/measurement/MeasurementType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    const-string/jumbo v1, "Network"

    invoke-direct {v0, v1, v3}, Lcom/newrelic/agent/android/measurement/MeasurementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Network:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    const-string/jumbo v1, "HttpError"

    invoke-direct {v0, v1, v4}, Lcom/newrelic/agent/android/measurement/MeasurementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 9
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    const-string/jumbo v1, "Method"

    invoke-direct {v0, v1, v5}, Lcom/newrelic/agent/android/measurement/MeasurementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Method:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 10
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    const-string/jumbo v1, "Activity"

    invoke-direct {v0, v1, v6}, Lcom/newrelic/agent/android/measurement/MeasurementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Activity:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 11
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    const-string/jumbo v1, "Custom"

    invoke-direct {v0, v1, v7}, Lcom/newrelic/agent/android/measurement/MeasurementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Custom:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 12
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    const-string/jumbo v1, "Any"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/measurement/MeasurementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Any:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 13
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    const-string/jumbo v1, "Machine"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/measurement/MeasurementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Machine:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/newrelic/agent/android/measurement/MeasurementType;

    sget-object v1, Lcom/newrelic/agent/android/measurement/MeasurementType;->Network:Lcom/newrelic/agent/android/measurement/MeasurementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/measurement/MeasurementType;->Method:Lcom/newrelic/agent/android/measurement/MeasurementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/newrelic/agent/android/measurement/MeasurementType;->Activity:Lcom/newrelic/agent/android/measurement/MeasurementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/newrelic/agent/android/measurement/MeasurementType;->Custom:Lcom/newrelic/agent/android/measurement/MeasurementType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/newrelic/agent/android/measurement/MeasurementType;->Any:Lcom/newrelic/agent/android/measurement/MeasurementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/newrelic/agent/android/measurement/MeasurementType;->Machine:Lcom/newrelic/agent/android/measurement/MeasurementType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->$VALUES:[Lcom/newrelic/agent/android/measurement/MeasurementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/measurement/MeasurementType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/measurement/MeasurementType;

    return-object v0
.end method

.method public static values()[Lcom/newrelic/agent/android/measurement/MeasurementType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->$VALUES:[Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/measurement/MeasurementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/measurement/MeasurementType;

    return-object v0
.end method
