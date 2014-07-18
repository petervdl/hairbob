.class Lcom/airbnb/android/views/NightsSelector$5;
.super Ljava/lang/Object;
.source "NightsSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/NightsSelector;->snapToPoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/NightsSelector;

.field final synthetic val$scrollBy:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/NightsSelector;ILandroid/view/View;)V
    .registers 4

    .prologue
    .line 148
    iput-object p1, p0, Lcom/airbnb/android/views/NightsSelector$5;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iput p2, p0, Lcom/airbnb/android/views/NightsSelector$5;->val$scrollBy:I

    iput-object p3, p0, Lcom/airbnb/android/views/NightsSelector$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$5;->this$0:Lcom/airbnb/android/views/NightsSelector;

    iget-object v1, v1, Lcom/airbnb/android/views/NightsSelector;->mNightsScrollView:Lcom/airbnb/android/views/VerboseHorizontalScrollView;

    iget v2, p0, Lcom/airbnb/android/views/NightsSelector$5;->val$scrollBy:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->smoothScrollBy(II)V

    .line 152
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$5;->val$view:Landroid/view/View;

    const v2, 0x7f08031a

    invoke-static {v1, v2}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$5;->this$0:Lcom/airbnb/android/views/NightsSelector;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/airbnb/android/views/NightsSelector;->mNights:I
    invoke-static {v1, v2}, Lcom/airbnb/android/views/NightsSelector;->access$802(Lcom/airbnb/android/views/NightsSelector;I)I

    .line 154
    iget-object v1, p0, Lcom/airbnb/android/views/NightsSelector$5;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/airbnb/android/views/NightsSelector;->access$400(Lcom/airbnb/android/views/NightsSelector;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/views/NightsSelector$5;->this$0:Lcom/airbnb/android/views/NightsSelector;

    # getter for: Lcom/airbnb/android/views/NightsSelector;->mSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/airbnb/android/views/NightsSelector;->access$300(Lcom/airbnb/android/views/NightsSelector;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method
