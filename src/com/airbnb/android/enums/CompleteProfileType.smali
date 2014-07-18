.class public final enum Lcom/airbnb/android/enums/CompleteProfileType;
.super Ljava/lang/Enum;
.source "CompleteProfileType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/enums/CompleteProfileType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/enums/CompleteProfileType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/enums/CompleteProfileType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EDIT_PROFILE_ADD_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

.field public static final enum EDIT_PROFILE_VERIFY_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

.field public static final enum MANAGE_LISTING:Lcom/airbnb/android/enums/CompleteProfileType;

.field public static final enum VERIFIED_ID:Lcom/airbnb/android/enums/CompleteProfileType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/airbnb/android/enums/CompleteProfileType;

    const-string/jumbo v1, "VERIFIED_ID"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/enums/CompleteProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->VERIFIED_ID:Lcom/airbnb/android/enums/CompleteProfileType;

    .line 8
    new-instance v0, Lcom/airbnb/android/enums/CompleteProfileType;

    const-string/jumbo v1, "MANAGE_LISTING"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/enums/CompleteProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->MANAGE_LISTING:Lcom/airbnb/android/enums/CompleteProfileType;

    .line 9
    new-instance v0, Lcom/airbnb/android/enums/CompleteProfileType;

    const-string/jumbo v1, "EDIT_PROFILE_ADD_PHONE"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/enums/CompleteProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_ADD_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    .line 10
    new-instance v0, Lcom/airbnb/android/enums/CompleteProfileType;

    const-string/jumbo v1, "EDIT_PROFILE_VERIFY_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/enums/CompleteProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_VERIFY_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/enums/CompleteProfileType;

    sget-object v1, Lcom/airbnb/android/enums/CompleteProfileType;->VERIFIED_ID:Lcom/airbnb/android/enums/CompleteProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/enums/CompleteProfileType;->MANAGE_LISTING:Lcom/airbnb/android/enums/CompleteProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_ADD_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_VERIFY_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->$VALUES:[Lcom/airbnb/android/enums/CompleteProfileType;

    .line 22
    new-instance v0, Lcom/airbnb/android/enums/CompleteProfileType$1;

    invoke-direct {v0}, Lcom/airbnb/android/enums/CompleteProfileType$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/enums/CompleteProfileType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/enums/CompleteProfileType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/enums/CompleteProfileType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->$VALUES:[Lcom/airbnb/android/enums/CompleteProfileType;

    invoke-virtual {v0}, [Lcom/airbnb/android/enums/CompleteProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/enums/CompleteProfileType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public isEditProfileType()Z
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_ADD_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/airbnb/android/enums/CompleteProfileType;->EDIT_PROFILE_VERIFY_PHONE:Lcom/airbnb/android/enums/CompleteProfileType;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/airbnb/android/enums/CompleteProfileType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    return-void
.end method
