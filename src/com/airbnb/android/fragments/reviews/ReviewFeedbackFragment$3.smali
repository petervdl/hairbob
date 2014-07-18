.class Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;
.super Ljava/lang/Object;
.source "ReviewFeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->initializeViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$200(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_23

    .line 275
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$300(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;

    move-result-object v0

    .line 279
    .local v0, "toFocus":Landroid/widget/EditText;
    :goto_16
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 280
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 281
    return-void

    .line 277
    .end local v0    # "toFocus":Landroid/widget/EditText;
    :cond_23
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$3;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPrivateFeedbackEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$400(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;

    move-result-object v0

    .restart local v0    # "toFocus":Landroid/widget/EditText;
    goto :goto_16
.end method
