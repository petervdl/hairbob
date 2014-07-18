.class Lcom/airbnb/android/views/GroupedCheck$1;
.super Ljava/lang/Object;
.source "GroupedCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/GroupedCheck;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/GroupedCheck;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/GroupedCheck;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/airbnb/android/views/GroupedCheck$1;->this$0:Lcom/airbnb/android/views/GroupedCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCheck$1;->this$0:Lcom/airbnb/android/views/GroupedCheck;

    invoke-virtual {v0}, Lcom/airbnb/android/views/GroupedCheck;->toggle()V

    .line 85
    return-void
.end method
