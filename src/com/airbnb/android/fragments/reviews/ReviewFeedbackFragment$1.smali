.class Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;
.super Ljava/lang/Object;
.source "ReviewFeedbackFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 152
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 153
    .local v1, "statusHeight":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # setter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I
    invoke-static {v2, v1}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$002(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;I)I

    .line 154
    iget-object v2, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$1;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    # += operator for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mStatusAndActionBarHeight:I
    invoke-static {v2, v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$012(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;I)I

    .line 155
    return-void
.end method
