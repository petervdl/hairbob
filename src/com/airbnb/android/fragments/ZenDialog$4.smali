.class Lcom/airbnb/android/fragments/ZenDialog$4;
.super Ljava/lang/Object;
.source "ZenDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 206
    iput-object p1, p0, Lcom/airbnb/android/fragments/ZenDialog$4;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/ZenDialog$4;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog;->dismiss()V

    .line 211
    return-void
.end method
