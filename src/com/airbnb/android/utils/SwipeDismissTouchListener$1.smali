.class Lcom/airbnb/android/utils/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/SwipeDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/SwipeDismissTouchListener;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener$1;->this$0:Lcom/airbnb/android/utils/SwipeDismissTouchListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/airbnb/android/utils/SwipeDismissTouchListener$1;->this$0:Lcom/airbnb/android/utils/SwipeDismissTouchListener;

    # invokes: Lcom/airbnb/android/utils/SwipeDismissTouchListener;->performDismiss()V
    invoke-static {v0}, Lcom/airbnb/android/utils/SwipeDismissTouchListener;->access$000(Lcom/airbnb/android/utils/SwipeDismissTouchListener;)V

    .line 130
    return-void
.end method
