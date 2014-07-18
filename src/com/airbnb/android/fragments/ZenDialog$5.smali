.class Lcom/airbnb/android/fragments/ZenDialog$5;
.super Ljava/lang/Object;
.source "ZenDialog.java"

# interfaces
.implements Lcom/airbnb/android/utils/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ZenDialog;->setSwipeDismissTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ZenDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ZenDialog;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/airbnb/android/fragments/ZenDialog$5;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$5;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog;->dismiss()V

    .line 240
    return-void
.end method
