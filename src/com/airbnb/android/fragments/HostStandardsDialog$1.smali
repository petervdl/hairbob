.class Lcom/airbnb/android/fragments/HostStandardsDialog$1;
.super Ljava/lang/Object;
.source "HostStandardsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HostStandardsDialog;->getStickyButtonClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HostStandardsDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HostStandardsDialog;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/fragments/HostStandardsDialog$1;->this$0:Lcom/airbnb/android/fragments/HostStandardsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/HostStandardsDialog$1;->this$0:Lcom/airbnb/android/fragments/HostStandardsDialog;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/HostStandardsDialog;->dismiss()V

    .line 50
    return-void
.end method
