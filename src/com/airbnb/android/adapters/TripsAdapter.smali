.class public Lcom/airbnb/android/adapters/TripsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TripsAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Reservation;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Consumer",
        "<",
        "Lcom/airbnb/android/models/Reservation;",
        ">;"
    }
.end annotation


# static fields
.field private static mMonthDaySdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private mSpannedCache:Lcom/airbnb/android/utils/EasyCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/utils/EasyCache",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 37
    new-instance v0, Lcom/airbnb/android/adapters/TripsAdapter$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/TripsAdapter$1;-><init>(Lcom/airbnb/android/adapters/TripsAdapter;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/TripsAdapter;->mSpannedCache:Lcom/airbnb/android/utils/EasyCache;

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/airbnb/android/adapters/TripsAdapter;->getInfoString(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInfoString(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "date":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/airbnb/android/adapters/TripsAdapter;->mMonthDaySdf:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_17

    .line 104
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0e013d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airbnb/android/adapters/TripsAdapter;->mMonthDaySdf:Ljava/text/SimpleDateFormat;

    .line 106
    :cond_17
    sget-object v1, Lcom/airbnb/android/adapters/TripsAdapter;->mMonthDaySdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/adapters/TripsAdapter;->mMonthDaySdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static setListingPictureHeight(Landroid/content/Context;Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p1, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;->backgroundPhoto:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f2aaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/airbnb/android/models/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/airbnb/android/models/Reservation;>;"
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 117
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TripsAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    if-nez p2, :cond_21

    .line 54
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03011a

    invoke-virtual {v4, v5, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v3, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;

    invoke-direct {v3, p0, p2}, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/TripsAdapter;Landroid/view/View;)V

    .line 58
    .local v3, "viewHolder":Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TripsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, p3}, Lcom/airbnb/android/adapters/TripsAdapter;->setListingPictureHeight(Landroid/content/Context;Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;Landroid/view/View;)V

    .line 63
    .end local v3    # "viewHolder":Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;
    :cond_21
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TripsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Reservation;

    .line 64
    .local v2, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 66
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;

    .line 67
    .restart local v3    # "viewHolder":Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;
    iget-object v4, v3, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;->backgroundPhoto:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 69
    iget-object v4, v3, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;->listingName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v4, v3, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;->hostPicture:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 74
    iget-object v4, v3, Lcom/airbnb/android/adapters/TripsAdapter$ViewHolder;->address:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/TripsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e021c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/airbnb/android/adapters/TripsAdapter;->mSpannedCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-virtual {v8, p1, v2}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLocation()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/adapters/TripsAdapter;->mSpannedCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/EasyCache;->clear()V

    .line 125
    return-void
.end method
