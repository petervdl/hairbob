.class final Lcom/airbnb/android/utils/KeyboardUtils$1;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboardIfFocused(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    iput-object p1, p0, Lcom/airbnb/android/utils/KeyboardUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/airbnb/android/utils/KeyboardUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/utils/KeyboardUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 30
    iget-object v0, p0, Lcom/airbnb/android/utils/KeyboardUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/airbnb/android/utils/KeyboardUtils$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 31
    return-void
.end method
