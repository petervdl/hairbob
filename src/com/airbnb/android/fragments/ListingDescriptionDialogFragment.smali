.class public Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ListingDescriptionDialogFragment.java"


# static fields
.field private static final LISTING:Ljava/lang/String; = "listing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 22
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v2, 0x7f0e0166

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;

    .line 24
    .local v0, "dialog":Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    return-object v0
.end method

.method private setField(Landroid/view/View;Ljava/lang/String;II)Z
    .registers 9
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "headerId"    # I
    .param p4, "bodyId"    # I

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 66
    if-lez p3, :cond_12

    .line 67
    invoke-static {p1, p3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "header":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    .end local v1    # "header":Landroid/widget/TextView;
    :cond_12
    invoke-static {p1, p4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, "body":Landroid/widget/TextView;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    const/4 v2, 0x1

    .line 76
    .end local v0    # "body":Landroid/widget/TextView;
    :cond_27
    return v2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0803b7

    const/4 v7, 0x0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "listing"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 33
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    const v4, 0x7f03016f

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "content":Landroid/view/View;
    const/4 v1, 0x0

    .line 46
    .local v1, "hasNonSpaceSection":Z
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4, v7, v8}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v1, v4

    .line 47
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getAccess()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0803ba

    const v6, 0x7f0803bb

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v1, v4

    .line 48
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getInteraction()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0803bc

    const v6, 0x7f0803bd

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v1, v4

    .line 49
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getNeighborhoodOverview()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0803be

    const v6, 0x7f0803bf

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v1, v4

    .line 50
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getTransit()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0803c0

    const v6, 0x7f0803c1

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v1, v4

    .line 51
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getNotes()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0803c2

    const v6, 0x7f0803c3

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v1, v4

    .line 53
    if-nez v1, :cond_7f

    .line 54
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getSpace()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4, v7, v8}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    .line 59
    :goto_7b
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setCustomView(Landroid/view/View;)V

    .line 61
    return-object v3

    .line 56
    :cond_7f
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getSpace()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0803b8

    const v6, 0x7f0803b9

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/airbnb/android/fragments/ListingDescriptionDialogFragment;->setField(Landroid/view/View;Ljava/lang/String;II)Z

    goto :goto_7b
.end method
