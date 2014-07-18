.class Lcom/airbnb/android/views/ClickableViewPager$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClickableViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/ClickableViewPager;->initGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/ClickableViewPager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/airbnb/android/views/ClickableViewPager$1;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager$1;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    # getter for: Lcom/airbnb/android/views/ClickableViewPager;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/airbnb/android/views/ClickableViewPager;->access$000(Lcom/airbnb/android/views/ClickableViewPager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 36
    iget-object v0, p0, Lcom/airbnb/android/views/ClickableViewPager$1;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    # getter for: Lcom/airbnb/android/views/ClickableViewPager;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/airbnb/android/views/ClickableViewPager;->access$000(Lcom/airbnb/android/views/ClickableViewPager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/ClickableViewPager$1;->this$0:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
