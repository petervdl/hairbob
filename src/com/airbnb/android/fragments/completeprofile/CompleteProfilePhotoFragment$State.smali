.class final enum Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;
.super Ljava/lang/Enum;
.source "CompleteProfilePhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

.field public static final enum DEFAULT:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

.field public static final enum PHOTO_CONFIRM:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

.field public static final enum PHOTO_CROP:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

.field public static final enum PHOTO_PICKER:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->DEFAULT:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 61
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    const-string/jumbo v1, "PHOTO_PICKER"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_PICKER:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 62
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    const-string/jumbo v1, "PHOTO_CROP"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_CROP:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 63
    new-instance v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    const-string/jumbo v1, "PHOTO_CONFIRM"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_CONFIRM:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    sget-object v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->DEFAULT:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_PICKER:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_CROP:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->PHOTO_CONFIRM:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->$VALUES:[Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->$VALUES:[Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$State;

    return-object v0
.end method
