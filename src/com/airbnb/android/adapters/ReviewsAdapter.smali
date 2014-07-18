.class public Lcom/airbnb/android/adapters/ReviewsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReviewsAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Review;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Consumer",
        "<",
        "Lcom/airbnb/android/models/Review;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mMonthYearSdf:Ljava/text/SimpleDateFormat;

.field private mResource:I

.field private mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "reviewMode"    # Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 37
    iput p2, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mResource:I

    .line 38
    iput-object p3, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e052b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    .line 40
    return-void
.end method

.method private getClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Lcom/airbnb/android/adapters/ReviewsAdapter$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/ReviewsAdapter$1;-><init>(Lcom/airbnb/android/adapters/ReviewsAdapter;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private shouldShowListing(Lcom/airbnb/android/models/Review;)Z
    .registers 7
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->hasListingInfo()Z

    move-result v1

    if-nez v1, :cond_8

    .line 91
    :cond_7
    :goto_7
    return v0

    .line 87
    :cond_8
    iget-object v1, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    sget-object v2, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_HOST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-eq v1, v2, :cond_20

    iget-object v1, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mReviewMode:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    sget-object v2, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getListingOwnerId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review;->getRevieweeId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 88
    :cond_20
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/airbnb/android/models/Review;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/airbnb/android/models/Review;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Review;

    .line 98
    .local v1, "review":Lcom/airbnb/android/models/Review;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ReviewsAdapter;->remove(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ReviewsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 102
    .end local v1    # "review":Lcom/airbnb/android/models/Review;
    :cond_17
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ReviewsAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 44
    if-nez p2, :cond_11

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mResource:I

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Review;

    .line 51
    .local v1, "review":Lcom/airbnb/android/models/Review;
    const v6, 0x7f080459

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, "reviewComment":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->getPublicFeedback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v6, 0x7f080457

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 55
    .local v4, "reviewerName":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v6, 0x7f080458

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, "reviewDate":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/airbnb/android/adapters/ReviewsAdapter;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v6}, Lcom/airbnb/android/models/Review;->getFormattedCreationDate(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v6, 0x7f080456

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/HaloImageView;

    .line 61
    .local v5, "thumbnail":Lcom/airbnb/android/views/HaloImageView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 63
    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->getReviewerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v6, 0x7f0804a9

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "listingTitle":Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/airbnb/android/adapters/ReviewsAdapter;->shouldShowListing(Lcom/airbnb/android/models/Review;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 68
    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->getListingName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v1}, Lcom/airbnb/android/models/Review;->getListingId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_9a
    return-object p2

    .line 73
    :cond_9b
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9a
.end method
