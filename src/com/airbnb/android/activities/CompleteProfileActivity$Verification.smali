.class final enum Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;
.super Ljava/lang/Enum;
.source "CompleteProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/CompleteProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Verification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

.field public static final enum EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

.field public static final enum PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

.field public static final enum PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    const-string/jumbo v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    .line 51
    new-instance v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    .line 52
    new-instance v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    sget-object v1, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHOTO:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->EMAIL:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->PHONE:Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->$VALUES:[Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->$VALUES:[Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/CompleteProfileActivity$Verification;

    return-object v0
.end method