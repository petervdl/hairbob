.class Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;
.super Ljava/lang/Object;
.source "SquareCalendarAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/SquareCalendarAdapter;->updateView(ILcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/utils/DrawableCompositor;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/SquareCalendarAdapter;

.field final synthetic val$today:Lcom/airbnb/android/models/CalendarSquare;

.field final synthetic val$yesterday:Lcom/airbnb/android/models/CalendarSquare;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/SquareCalendarAdapter;Lcom/airbnb/android/models/CalendarSquare;Lcom/airbnb/android/models/CalendarSquare;)V
    .registers 4

    .prologue
    .line 116
    iput-object p1, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->this$0:Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$today:Lcom/airbnb/android/models/CalendarSquare;

    iput-object p3, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$yesterday:Lcom/airbnb/android/models/CalendarSquare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->this$0:Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    # setter for: Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mShouldAnimate:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->access$002(Lcom/airbnb/android/adapters/SquareCalendarAdapter;Z)Z

    .line 136
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$today:Lcom/airbnb/android/models/CalendarSquare;

    if-eqz v0, :cond_f

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$today:Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/CalendarSquare;->setSelected(Z)V

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$yesterday:Lcom/airbnb/android/models/CalendarSquare;

    if-eqz v0, :cond_18

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$yesterday:Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/CalendarSquare;->setSelected(Z)V

    .line 142
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->this$0:Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->notifyDataSetChanged()V

    .line 143
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->this$0:Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    # setter for: Lcom/airbnb/android/adapters/SquareCalendarAdapter;->mShouldAnimate:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->access$002(Lcom/airbnb/android/adapters/SquareCalendarAdapter;Z)Z

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$today:Lcom/airbnb/android/models/CalendarSquare;

    if-eqz v0, :cond_f

    .line 125
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$today:Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/CalendarSquare;->setSelected(Z)V

    .line 127
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$yesterday:Lcom/airbnb/android/models/CalendarSquare;

    if-eqz v0, :cond_18

    .line 128
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->val$yesterday:Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/CalendarSquare;->setSelected(Z)V

    .line 130
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/adapters/SquareCalendarAdapter$1;->this$0:Lcom/airbnb/android/adapters/SquareCalendarAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SquareCalendarAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 147
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 119
    return-void
.end method
