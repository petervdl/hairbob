.class public final enum Lcom/airbnb/android/models/Review$RatingType;
.super Ljava/lang/Enum;
.source "Review.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/Review;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RatingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/Review$RatingType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum Accuracy:Lcom/airbnb/android/models/Review$RatingType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Review$RatingType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CheckIn:Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum Cleanliness:Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum Communication:Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum HouseRuleObservance:Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum Location:Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum Overall:Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum Recommend:Lcom/airbnb/android/models/Review$RatingType;

.field public static final enum Value:Lcom/airbnb/android/models/Review$RatingType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "Cleanliness"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->Cleanliness:Lcom/airbnb/android/models/Review$RatingType;

    .line 21
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "Communication"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->Communication:Lcom/airbnb/android/models/Review$RatingType;

    .line 22
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "HouseRuleObservance"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->HouseRuleObservance:Lcom/airbnb/android/models/Review$RatingType;

    .line 23
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "Accuracy"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->Accuracy:Lcom/airbnb/android/models/Review$RatingType;

    .line 24
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "CheckIn"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->CheckIn:Lcom/airbnb/android/models/Review$RatingType;

    .line 25
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "Location"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->Location:Lcom/airbnb/android/models/Review$RatingType;

    .line 26
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "Value"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->Value:Lcom/airbnb/android/models/Review$RatingType;

    .line 27
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "Recommend"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->Recommend:Lcom/airbnb/android/models/Review$RatingType;

    .line 28
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType;

    const-string/jumbo v1, "Overall"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/Review$RatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->Overall:Lcom/airbnb/android/models/Review$RatingType;

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/airbnb/android/models/Review$RatingType;

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Cleanliness:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Communication:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->HouseRuleObservance:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Accuracy:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->CheckIn:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/Review$RatingType;->Location:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/models/Review$RatingType;->Value:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/models/Review$RatingType;->Recommend:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/models/Review$RatingType;->Overall:Lcom/airbnb/android/models/Review$RatingType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->$VALUES:[Lcom/airbnb/android/models/Review$RatingType;

    .line 40
    new-instance v0, Lcom/airbnb/android/models/Review$RatingType$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Review$RatingType$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Review$RatingType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/Review$RatingType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/airbnb/android/models/Review$RatingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Review$RatingType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/Review$RatingType;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/airbnb/android/models/Review$RatingType;->$VALUES:[Lcom/airbnb/android/models/Review$RatingType;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/Review$RatingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/Review$RatingType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method
