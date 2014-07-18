.class Lcom/airbnb/android/views/ClickableViewPager$2;
.super Ljava/lang/Object;
.source "ClickableViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/ClickableViewPager;->startScrolling(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/ClickableViewPager;

.field final synthetic val$cycleDelay:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/ClickableViewPager;I)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/views/ClickableViewPager$2;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    iput p2, p0, Lcom/airbnb/android/views/ClickableViewPager$2;->val$cycleDelay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v1, p0, Lcom/airbnb/android/views/ClickableViewPager$2;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    .line 111
    .local v1, "pager":Lcom/airbnb/android/views/ClickableViewPager;
    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-le v2, v4, :cond_40

    .line 112
    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 113
    .local v0, "newIndex":I
    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_40

    iget-object v2, p0, Lcom/airbnb/android/views/ClickableViewPager$2;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    # getter for: Lcom/airbnb/android/views/ClickableViewPager;->mAutoScrollCount:I
    invoke-static {v2}, Lcom/airbnb/android/views/ClickableViewPager;->access$100(Lcom/airbnb/android/views/ClickableViewPager;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_40

    .line 114
    invoke-virtual {v1, v0, v4}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 115
    iget-object v2, p0, Lcom/airbnb/android/views/ClickableViewPager$2;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    # getter for: Lcom/airbnb/android/views/ClickableViewPager;->mAutomationHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/airbnb/android/views/ClickableViewPager;->access$200(Lcom/airbnb/android/views/ClickableViewPager;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/views/ClickableViewPager$2;->val$cycleDelay:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    iget-object v2, p0, Lcom/airbnb/android/views/ClickableViewPager$2;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    # operator++ for: Lcom/airbnb/android/views/ClickableViewPager;->mAutoScrollCount:I
    invoke-static {v2}, Lcom/airbnb/android/views/ClickableViewPager;->access$108(Lcom/airbnb/android/views/ClickableViewPager;)I

    .line 121
    .end local v0    # "newIndex":I
    :cond_40
    return-void
.end method
