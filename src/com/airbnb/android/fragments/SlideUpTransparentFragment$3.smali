.class Lcom/airbnb/android/fragments/SlideUpTransparentFragment$3;
.super Ljava/lang/Object;
.source "SlideUpTransparentFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$3;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(II)V
    .registers 4
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$3;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$002(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;I)I

    .line 133
    return-void
.end method
