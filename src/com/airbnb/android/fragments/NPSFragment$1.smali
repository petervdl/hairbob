.class Lcom/airbnb/android/fragments/NPSFragment$1;
.super Ljava/lang/Object;
.source "NPSFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/NPSFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/NPSFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/NPSFragment;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/NPSFragment;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 56
    .local v2, "selected":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    .line 57
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/NPSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    const v5, 0x7f0e055f

    invoke-virtual {v4, v5}, Lcom/airbnb/android/fragments/NPSFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 70
    :goto_22
    return-void

    .line 59
    :cond_23
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/NPSFragment;->mGroup:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/NPSFragment;->mGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 60
    .local v1, "idx":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    # getter for: Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v3}, Lcom/airbnb/android/fragments/NPSFragment;->access$000(Lcom/airbnb/android/fragments/NPSFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackSubmitNPS(Lcom/airbnb/android/models/Review;I)V

    .line 62
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    # getter for: Lcom/airbnb/android/fragments/NPSFragment;->mDoubleBlindExperiment:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/NPSFragment;->access$100(Lcom/airbnb/android/fragments/NPSFragment;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 63
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    # getter for: Lcom/airbnb/android/fragments/NPSFragment;->mReview:Lcom/airbnb/android/models/Review;
    invoke-static {v3}, Lcom/airbnb/android/fragments/NPSFragment;->access$000(Lcom/airbnb/android/fragments/NPSFragment;)Lcom/airbnb/android/models/Review;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->newInstanceForPostReview(Lcom/airbnb/android/models/Review;Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;

    move-result-object v0

    .line 64
    .local v0, "f":Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    const/16 v4, 0x3f4

    invoke-virtual {v0, v3, v4}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 65
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/NPSFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_22

    .line 67
    .end local v0    # "f":Lcom/airbnb/android/fragments/ReviewInfoDialogFragment;
    :cond_62
    iget-object v3, p0, Lcom/airbnb/android/fragments/NPSFragment$1;->this$0:Lcom/airbnb/android/fragments/NPSFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/NPSFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_22
.end method
