.class Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;
.super Ljava/lang/Object;
.source "BaseCalendarAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->animate(Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 355
    iput-object p1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;->this$0:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    iput-object p2, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;->this$0:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    # getter for: Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->access$100(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;->this$0:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    # getter for: Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mAlpha:I
    invoke-static {v1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->access$000(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 359
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 360
    return-void
.end method
