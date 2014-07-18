.class Lcom/airbnb/android/fragments/SlidingMenuFragment$8;
.super Ljava/lang/Object;
.source "SlidingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment;->setVerifyMyIdButtonVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2

    .prologue
    .line 368
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$8;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 374
    new-instance v0, Lcom/airbnb/android/requests/VerificationsRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SlidingMenuFragment$8$1;-><init>(Lcom/airbnb/android/fragments/SlidingMenuFragment$8;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/VerificationsRequest;-><init>(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/VerificationsRequest;->execute()V

    .line 396
    return-void
.end method
