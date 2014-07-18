.class public final enum Lcom/airbnb/android/models/ReservationStatus;
.super Ljava/lang/Enum;
.source "ReservationStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/ReservationStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Accepted:Lcom/airbnb/android/models/ReservationStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/ReservationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Cancelled:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Checkpoint:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Denied:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Inquiry:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum NotPossible:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Pending:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Preapproved:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum SpecialOffer:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Timedout:Lcom/airbnb/android/models/ReservationStatus;

.field public static final enum Unknown:Lcom/airbnb/android/models/ReservationStatus;

.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/ReservationStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorId:I

.field private mCompletedSubtitleResId:I

.field private mCompletedTitleResId:I

.field private mDisplayStringId:I

.field private mLoadingTitleResId:I

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    .line 16
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Preapproved"

    const/4 v2, 0x0

    const-string/jumbo v3, "preapproved"

    const v4, 0x7f0a0013

    const v5, 0x7f0e072b

    const v6, 0x7f0e0686

    const v7, 0x7f0e0687

    const v8, 0x7f0e0688

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Preapproved:Lcom/airbnb/android/models/ReservationStatus;

    .line 18
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Accepted"

    const/4 v2, 0x1

    const-string/jumbo v3, "accepted"

    const v4, 0x7f0a0028

    const v5, 0x7f0e0721

    const v6, 0x7f0e0677

    const v7, 0x7f0e0678

    const v8, 0x7f0e0679

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    .line 19
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Inquiry"

    const/4 v2, 0x2

    const-string/jumbo v3, "inquiry"

    const v4, 0x7f0a0013

    const v5, 0x7f0e0728

    const v6, 0x7f0e067c

    const v7, 0x7f0e067d

    const v8, 0x7f0e0680

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    .line 21
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Pending"

    const/4 v2, 0x3

    const-string/jumbo v3, "pending"

    const v4, 0x7f0a0013

    const v5, 0x7f0e0729

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    .line 22
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Denied"

    const/4 v2, 0x4

    const-string/jumbo v3, "denied"

    const v4, 0x7f0a0014

    const v5, 0x7f0e0727

    const v6, 0x7f0e067e

    const v7, 0x7f0e067f

    const v8, 0x7f0e0680

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    .line 23
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "NotPossible"

    const/4 v2, 0x5

    const-string/jumbo v3, "not_possible"

    const v4, 0x7f0a0014

    const v5, 0x7f0e0726

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->NotPossible:Lcom/airbnb/android/models/ReservationStatus;

    .line 24
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Cancelled"

    const/4 v2, 0x6

    const-string/jumbo v3, "cancelled"

    const v4, 0x7f0a0014

    const v5, 0x7f0e0723

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Cancelled:Lcom/airbnb/android/models/ReservationStatus;

    .line 25
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Timedout"

    const/4 v2, 0x7

    const-string/jumbo v3, "timedout"

    const v4, 0x7f0a0014

    const v5, 0x7f0e072c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Timedout:Lcom/airbnb/android/models/ReservationStatus;

    .line 26
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "SpecialOffer"

    const/16 v2, 0x8

    const-string/jumbo v3, "special_offer"

    const v4, 0x7f0a0013

    const v5, 0x7f0e071b

    const v6, 0x7f0e06a9

    const v7, 0x7f0e06aa

    const v8, 0x7f0e06ab

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->SpecialOffer:Lcom/airbnb/android/models/ReservationStatus;

    .line 28
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Checkpoint"

    const/16 v2, 0x9

    const-string/jumbo v3, "checkpoint"

    const v4, 0x7f0a0013

    const v5, 0x7f0e0724

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Checkpoint:Lcom/airbnb/android/models/ReservationStatus;

    .line 29
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0xa

    const-string/jumbo v3, ""

    const v4, 0x7f0a0014

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/ReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/airbnb/android/models/ReservationStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Preapproved:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->NotPossible:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Cancelled:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Timedout:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->SpecialOffer:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Checkpoint:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->$VALUES:[Lcom/airbnb/android/models/ReservationStatus;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/airbnb/android/models/ReservationStatus;->values()[Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->mMap:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Lcom/airbnb/android/models/ReservationStatus;->values()[Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v9

    .local v9, "arr$":[Lcom/airbnb/android/models/ReservationStatus;
    array-length v11, v9

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_16e
    if-ge v10, v11, :cond_17e

    aget-object v12, v9, v10

    .line 52
    .local v12, "status":Lcom/airbnb/android/models/ReservationStatus;
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->mMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Lcom/airbnb/android/models/ReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v10, v10, 0x1

    goto :goto_16e

    .line 111
    .end local v12    # "status":Lcom/airbnb/android/models/ReservationStatus;
    :cond_17e
    new-instance v0, Lcom/airbnb/android/models/ReservationStatus$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/ReservationStatus$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/ReservationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .registers 9
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "color"    # I
    .param p5, "displayString"    # I
    .param p6, "loadingTitleRes"    # I
    .param p7, "completedTitleRes"    # I
    .param p8, "completedSubtitleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/airbnb/android/models/ReservationStatus;->mStatus:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/airbnb/android/models/ReservationStatus;->mColorId:I

    .line 41
    iput p5, p0, Lcom/airbnb/android/models/ReservationStatus;->mDisplayStringId:I

    .line 42
    iput p6, p0, Lcom/airbnb/android/models/ReservationStatus;->mLoadingTitleResId:I

    .line 43
    iput p7, p0, Lcom/airbnb/android/models/ReservationStatus;->mCompletedTitleResId:I

    .line 44
    iput p8, p0, Lcom/airbnb/android/models/ReservationStatus;->mCompletedSubtitleResId:I

    .line 45
    return-void
.end method

.method public static findStatus(Ljava/lang/String;)Lcom/airbnb/android/models/ReservationStatus;
    .registers 4
    .param p0, "statusString"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "status":Lcom/airbnb/android/models/ReservationStatus;
    if-eqz p0, :cond_13

    .line 60
    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "status":Lcom/airbnb/android/models/ReservationStatus;
    check-cast v0, Lcom/airbnb/android/models/ReservationStatus;

    .line 61
    .restart local v0    # "status":Lcom/airbnb/android/models/ReservationStatus;
    if-eqz v0, :cond_13

    move-object v1, v0

    .line 65
    :goto_12
    return-object v1

    :cond_13
    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    goto :goto_12
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/ReservationStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/airbnb/android/models/ReservationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/ReservationStatus;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->$VALUES:[Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/ReservationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getColorId()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/airbnb/android/models/ReservationStatus;->mColorId:I

    return v0
.end method

.method public getCompletedSubtitleResId()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/airbnb/android/models/ReservationStatus;->mCompletedSubtitleResId:I

    return v0
.end method

.method public getCompletedTitleResId()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/airbnb/android/models/ReservationStatus;->mCompletedTitleResId:I

    return v0
.end method

.method public getDisplayStringId()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/airbnb/android/models/ReservationStatus;->mDisplayStringId:I

    return v0
.end method

.method public getLoadingTitleResId()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/airbnb/android/models/ReservationStatus;->mLoadingTitleResId:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/models/ReservationStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayString()Z
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/airbnb/android/models/ReservationStatus;->mDisplayStringId:I

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
    .line 108
    invoke-virtual {p0}, Lcom/airbnb/android/models/ReservationStatus;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
