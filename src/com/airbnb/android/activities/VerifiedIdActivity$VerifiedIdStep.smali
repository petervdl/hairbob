.class final enum Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;
.super Ljava/lang/Enum;
.source "VerifiedIdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/VerifiedIdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VerifiedIdStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

.field public static final enum BASIC:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

.field public static final enum COMPLETE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

.field public static final enum OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

.field public static final enum ONLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

.field public static final enum WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    const-string/jumbo v1, "WELCOME"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 81
    new-instance v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    const-string/jumbo v1, "BASIC"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->BASIC:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 82
    new-instance v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 83
    new-instance v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ONLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 84
    new-instance v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->COMPLETE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->WELCOME:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->BASIC:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->OFFLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->ONLINE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->COMPLETE:Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->$VALUES:[Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->$VALUES:[Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/VerifiedIdActivity$VerifiedIdStep;

    return-object v0
.end method
