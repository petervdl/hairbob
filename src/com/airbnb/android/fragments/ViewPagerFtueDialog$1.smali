.class Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;
.super Ljava/lang/Object;
.source "ViewPagerFtueDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

.field final synthetic val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ViewPagerFtueDialog;Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget v0, v0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mCurrPage:I

    iget-object v1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->getLastPageIndex()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;->val$viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ViewPagerFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/ViewPagerFtueDialog;

    iget v1, v1, Lcom/airbnb/android/fragments/ViewPagerFtueDialog;->mCurrPage:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 71
    :cond_18
    return-void
.end method
