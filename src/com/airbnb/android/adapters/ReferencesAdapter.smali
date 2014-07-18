.class public Lcom/airbnb/android/adapters/ReferencesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReferencesAdapter.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Recommendation;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Consumer",
        "<",
        "Lcom/airbnb/android/models/Recommendation;",
        ">;"
    }
.end annotation


# instance fields
.field private mMonthYearSdf:Ljava/text/SimpleDateFormat;

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 34
    iput p2, p0, Lcom/airbnb/android/adapters/ReferencesAdapter;->mResource:I

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e052b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/ReferencesAdapter;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    .line 36
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/airbnb/android/models/Recommendation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/airbnb/android/models/Recommendation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Recommendation;

    .line 76
    .local v1, "reference":Lcom/airbnb/android/models/Recommendation;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/ReferencesAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 78
    .end local v1    # "reference":Lcom/airbnb/android/models/Recommendation;
    :cond_14
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ReferencesAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    if-nez p2, :cond_11

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ReferencesAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, p0, Lcom/airbnb/android/adapters/ReferencesAdapter;->mResource:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ReferencesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Recommendation;

    .line 47
    .local v1, "reference":Lcom/airbnb/android/models/Recommendation;
    const v6, 0x7f080459

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "comment":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRecommendation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v6, 0x7f080457

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "reviewerName":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRecommender()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v6, 0x7f080458

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "reviewDate":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/airbnb/android/adapters/ReferencesAdapter;->mMonthYearSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getCreatedAt()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "reviewCreatedDate":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v6, 0x7f080456

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/HaloImageView;

    .line 58
    .local v5, "thumbnail":Lcom/airbnb/android/views/HaloImageView;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Recommendation;->getRecommender()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 60
    new-instance v6, Lcom/airbnb/android/adapters/ReferencesAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/airbnb/android/adapters/ReferencesAdapter$1;-><init>(Lcom/airbnb/android/adapters/ReferencesAdapter;Lcom/airbnb/android/models/Recommendation;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-object p2
.end method
