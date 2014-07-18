.class final enum Lcom/newrelic/agent/android/instrumentation/TransactionState$State;
.super Ljava/lang/Enum;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/instrumentation/TransactionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newrelic/agent/android/instrumentation/TransactionState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

.field public static final enum COMPLETE:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

.field public static final enum READY:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

.field public static final enum SENT:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->READY:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    .line 17
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    const-string/jumbo v1, "SENT"

    invoke-direct {v0, v1, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->SENT:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    .line 18
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->COMPLETE:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->READY:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->SENT:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->COMPLETE:Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->$VALUES:[Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/instrumentation/TransactionState$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    return-object v0
.end method

.method public static values()[Lcom/newrelic/agent/android/instrumentation/TransactionState$State;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->$VALUES:[Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/instrumentation/TransactionState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/instrumentation/TransactionState$State;

    return-object v0
.end method
