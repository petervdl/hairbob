.class public final enum Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
.super Ljava/lang/Enum;
.source "EditProfileInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/EditProfileInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum About:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum BirthDate:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Email:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum Gender:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum Languages:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum Live:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum Name:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final OPTIONAL_DETAILS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_DETAILS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Phone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum School:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum TimeZone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

.field public static final enum Work:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;


# instance fields
.field private mDescriptionId:I

.field private mHintId:I

.field private mJsonKey:Ljava/lang/String;

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v1, "Name"

    const v3, 0x7f0e0190

    const-string/jumbo v6, "name"

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Name:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 17
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "About"

    const v6, 0x7f0e017e

    const v8, 0x7f0e0179

    const-string/jumbo v9, "about"

    move v5, v10

    move v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->About:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 18
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "Gender"

    const v6, 0x7f0e0185

    const v8, 0x7f0e0186

    const-string/jumbo v9, "gender"

    move v5, v11

    move v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Gender:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 19
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "BirthDate"

    const v6, 0x7f0e017b

    const v8, 0x7f0e017c

    const-string/jumbo v9, "birthdate"

    move v5, v12

    move v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->BirthDate:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 20
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "Email"

    const v6, 0x7f0e0180

    const v8, 0x7f0e0182

    const-string/jumbo v9, "email"

    move v5, v13

    move v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Email:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 21
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "Phone"

    const/4 v5, 0x5

    const v6, 0x7f0e0192

    const v8, 0x7f0e0193

    const-string/jumbo v9, "phone"

    move v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Phone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 22
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "Live"

    const/4 v5, 0x6

    const v6, 0x7f0e018e

    const v7, 0x7f0e018f

    const-string/jumbo v9, "location"

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Live:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 23
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "School"

    const/4 v5, 0x7

    const v6, 0x7f0e019b

    const v7, 0x7f0e019c

    const-string/jumbo v9, "school"

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->School:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 24
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "Work"

    const/16 v5, 0x8

    const v6, 0x7f0e01a0

    const v7, 0x7f0e01a1

    const-string/jumbo v9, "work"

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Work:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 25
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "Languages"

    const/16 v5, 0x9

    const v6, 0x7f0e018b

    const v7, 0x7f0e018c

    const-string/jumbo v9, "languages"

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Languages:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 26
    new-instance v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    const-string/jumbo v4, "TimeZone"

    const/16 v5, 0xa

    const v6, 0x7f0e019d

    const v7, 0x7f0e019e

    const-string/jumbo v9, "timezone"

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v3, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->TimeZone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Name:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->About:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v1, v0, v10

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Gender:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v1, v0, v11

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->BirthDate:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v1, v0, v12

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Email:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Phone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Live:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->School:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Work:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Languages:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->TimeZone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->$VALUES:[Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    .line 64
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Gender:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Phone:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->PRIVATE_DETAILS:Ljava/util/EnumSet;

    .line 65
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Live:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    sget-object v1, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->Languages:Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->OPTIONAL_DETAILS:Ljava/util/EnumSet;

    .line 77
    new-instance v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection$1;

    invoke-direct {v0}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 7
    .param p3, "title"    # I
    .param p4, "hint"    # I
    .param p5, "description"    # I
    .param p6, "jsonKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mTitleId:I

    .line 35
    iput p4, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mHintId:I

    .line 36
    iput p5, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mDescriptionId:I

    .line 37
    iput-object p6, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mJsonKey:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->$VALUES:[Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getDescriptionId()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mDescriptionId:I

    return v0
.end method

.method public getHintId()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mHintId:I

    return v0
.end method

.method public getJsonKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mJsonKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleId()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mTitleId:I

    return v0
.end method

.method public hasDescription()Z
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mDescriptionId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasHint()Z
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->mHintId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
