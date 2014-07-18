.class Lcom/airbnb/android/views/CheckableLinearLayout$1;
.super Ljava/lang/Object;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/CheckableLinearLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/CheckableLinearLayout;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/CheckableLinearLayout;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/views/CheckableLinearLayout$1;->this$0:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/views/CheckableLinearLayout$1;->this$0:Lcom/airbnb/android/views/CheckableLinearLayout;

    invoke-virtual {v0}, Lcom/airbnb/android/views/CheckableLinearLayout;->toggle()V

    .line 35
    return-void
.end method
