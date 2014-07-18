.class public Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProPhotographyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProPhotoSelectListingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/Listing;",
        ">;"
    }
.end annotation


# instance fields
.field mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    const v0, 0x7f030159

    .line 377
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 378
    iput v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;->mResource:I

    .line 379
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 383
    if-nez p2, :cond_11

    .line 384
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;->mResource:I

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 387
    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 389
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    const v3, 0x7f0800a5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 390
    .local v2, "listingName":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const v3, 0x7f08014a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 393
    .local v1, "listingInfo":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$ProPhotoSelectListingAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e00a7

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPriceFormatted()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getPropertyType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    return-object p2
.end method
