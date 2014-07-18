.class Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;
.super Ljava/lang/Object;
.source "ReviewFeedbackFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 159
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;->val$rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;->val$rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 164
    .local v0, "diff":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$2;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$000(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)I

    move-result v1

    if-le v0, v1, :cond_21

    const/4 v1, 0x1

    :goto_1d
    # invokes: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->onSoftKeyboardChanged(Z)V
    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$100(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;Z)V

    .line 165
    return-void

    .line 164
    :cond_21
    const/4 v1, 0x0

    goto :goto_1d
.end method
