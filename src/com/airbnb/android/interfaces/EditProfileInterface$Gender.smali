.class public final enum Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
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
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Female:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

.field public static final enum Male:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

.field public static final enum Other:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayId:I

.field private mJsonValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 91
    new-instance v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    const-string/jumbo v5, "Male"

    const v6, 0x7f0e0188

    const-string/jumbo v7, "Male"

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->Male:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .line 92
    new-instance v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    const-string/jumbo v5, "Female"

    const v6, 0x7f0e0187

    const-string/jumbo v7, "Female"

    invoke-direct {v4, v5, v9, v6, v7}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->Female:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .line 93
    new-instance v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    const-string/jumbo v5, "Other"

    const v6, 0x7f0e0189

    const-string/jumbo v7, "Other"

    invoke-direct {v4, v5, v10, v6, v7}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->Other:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .line 90
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    sget-object v5, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->Male:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    aput-object v5, v4, v8

    sget-object v5, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->Female:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    aput-object v5, v4, v9

    sget-object v5, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->Other:Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    aput-object v5, v4, v10

    sput-object v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->$VALUES:[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    .line 98
    new-instance v4, Ljava/util/HashMap;

    invoke-static {}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->values()[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    move-result-object v5

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->mMap:Ljava/util/Map;

    .line 101
    invoke-static {}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->values()[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    move-result-object v0

    .local v0, "arr$":[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_56
    if-ge v1, v2, :cond_66

    aget-object v3, v0, v1

    .line 102
    .local v3, "status":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    sget-object v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->mMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->getJsonValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 133
    .end local v3    # "status":Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    :cond_66
    new-instance v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender$1;

    invoke-direct {v4}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender$1;-><init>()V

    sput-object v4, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "displayId"    # I
    .param p4, "jsonValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->mDisplayId:I

    .line 108
    iput-object p4, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->mJsonValue:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static findGender(Ljava/lang/String;)Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->mMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->$VALUES:[Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->mDisplayId:I

    return v0
.end method

.method public getJsonValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->mJsonValue:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/EditProfileInterface$Gender;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method
