.class Lcom/airbnb/android/adapters/PickWishListAdapter$2;
.super Ljava/lang/Object;
.source "PickWishListAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/PickWishListAdapter;->setupAddNewWishListRow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

.field final synthetic val$checkMark:Landroid/widget/ImageView;

.field final synthetic val$disabledCheckmark:Landroid/graphics/drawable/Drawable;

.field final synthetic val$enabledCheckmark:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/PickWishListAdapter;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    .line 231
    iput-object p1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$2;->this$0:Lcom/airbnb/android/adapters/PickWishListAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$2;->val$checkMark:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$2;->val$disabledCheckmark:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$2;->val$enabledCheckmark:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$2;->val$checkMark:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$2;->val$disabledCheckmark:Landroid/graphics/drawable/Drawable;

    :goto_12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void

    .line 243
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/adapters/PickWishListAdapter$2;->val$enabledCheckmark:Landroid/graphics/drawable/Drawable;

    goto :goto_12
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 239
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 235
    return-void
.end method
