.class public Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AirDialogFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActionItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/models/ActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ActionItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 411
    iput p2, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;->mResource:I

    .line 412
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 416
    if-nez p2, :cond_11

    .line 417
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;->mResource:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 420
    :cond_11
    const v4, 0x7f080341

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 421
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/ActionItem;

    invoke-virtual {v4}, Lcom/airbnb/android/models/ActionItem;->getIconColorRes()I

    move-result v0

    .line 422
    .local v0, "colorRes":I
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/ActionItem;

    invoke-virtual {v4}, Lcom/airbnb/android/models/ActionItem;->getIconRes()I

    move-result v1

    .line 423
    .local v1, "drawableId":I
    if-lez v0, :cond_4e

    .line 424
    invoke-static {v1, v0}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    :goto_37
    const v4, 0x7f080342

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 430
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AirDialogFragments$ActionListDialogFragment$ActionItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/ActionItem;

    invoke-virtual {v4}, Lcom/airbnb/android/models/ActionItem;->getTextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    return-object p2

    .line 426
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_4e
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_37
.end method
