.class public final Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InstantBookAdvanceNoticeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantBookAdvanceNoticeArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckmark:Landroid/graphics/drawable/Drawable;

.field private mLayoutId:I

.field private mSelectedNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "notices"    # [Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .param p4, "selectedNotice"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 72
    iput-object p4, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->mSelectedNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 73
    iput p2, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->mLayoutId:I

    .line 74
    return-void
.end method

.method private getCheckmark()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->mCheckmark:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    .line 100
    const v0, 0x7f02007d

    const v1, 0x7f0a000f

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->mCheckmark:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->mCheckmark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    if-nez p2, :cond_11

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->mLayoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    :cond_11
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .line 84
    .local v0, "notice":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    const v3, 0x7f0803b5

    invoke-static {p2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, "visibilityLabel":Landroid/widget/TextView;
    iget v3, v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 87
    const v3, 0x7f0803b6

    invoke-static {p2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 88
    .local v1, "visibilityCheckmark":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->mSelectedNotice:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    invoke-virtual {v3, v0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 89
    invoke-direct {p0}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;->getCheckmark()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :goto_3d
    return-object p2

    .line 91
    :cond_3e
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3d
.end method
