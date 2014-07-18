.class Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$2;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->showCompleteState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->sendOnProgressComplete()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    .line 209
    return-void
.end method
