.class Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$10;
.super Ljava/lang/Object;
.source "PreListManageListingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->calculateStepsRemaining(Lcom/airbnb/android/models/Listing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_16

    .line 343
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 345
    :cond_16
    return-void
.end method
