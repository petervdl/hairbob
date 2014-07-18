.class Lcom/airbnb/android/fragments/groups/ContentFragment$1;
.super Ljava/lang/Object;
.source "ContentFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/ContentFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/ContentFragment;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 91
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ContentFragment$1;->this$0:Lcom/airbnb/android/fragments/groups/ContentFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/ContentFragment;->mDots:Lcom/airbnb/android/views/DotsCounter;
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/ContentFragment;->access$000(Lcom/airbnb/android/fragments/groups/ContentFragment;)Lcom/airbnb/android/views/DotsCounter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/DotsCounter;->setSelectedDot(I)V

    .line 86
    return-void
.end method
