.class Lcom/airbnb/android/fragments/ContactHostFragment$5;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->scrollToBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$500(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageSection:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$300(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 259
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mIsWideMode:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$600(Lcom/airbnb/android/fragments/ContactHostFragment;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageSection:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$300(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 261
    .local v0, "scrollToY":I
    :goto_23
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$500(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 263
    .end local v0    # "scrollToY":I
    :cond_2c
    return-void

    .line 259
    :cond_2d
    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$500(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_23
.end method
