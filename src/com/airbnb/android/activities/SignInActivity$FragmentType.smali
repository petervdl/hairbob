.class final enum Lcom/airbnb/android/activities/SignInActivity$FragmentType;
.super Ljava/lang/Enum;
.source "SignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/SignInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/SignInActivity$FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/SignInActivity$FragmentType;

.field public static final enum LANDING:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

.field public static final enum LOGIN:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

.field public static final enum SIGN_UP:Lcom/airbnb/android/activities/SignInActivity$FragmentType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    const-string/jumbo v1, "LANDING"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/SignInActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LANDING:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    .line 115
    new-instance v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    const-string/jumbo v1, "LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/SignInActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LOGIN:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    .line 116
    new-instance v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    const-string/jumbo v1, "SIGN_UP"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/SignInActivity$FragmentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->SIGN_UP:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    sget-object v1, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LANDING:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->LOGIN:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->SIGN_UP:Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->$VALUES:[Lcom/airbnb/android/activities/SignInActivity$FragmentType;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/SignInActivity$FragmentType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/SignInActivity$FragmentType;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/airbnb/android/activities/SignInActivity$FragmentType;->$VALUES:[Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/SignInActivity$FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/SignInActivity$FragmentType;

    return-object v0
.end method
