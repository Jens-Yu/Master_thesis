import pickle

# 指定您想要读取的文件路径
file_path = 'D:/Programfiles/SCVP/archive/process_data.dat'

# 使用 'rb' 模式打开文件（'rb' 代表 'read binary'）
with open(file_path, 'rb') as file:
    # 使用 pickle.load 来加载和反序列化文件内容
    data = pickle.load(file)

# 打印反序列化后的数据
print(data)

# 根据您的数据结构，您可能需要更详细地遍历或访问数据
# 例如，如果数据是一个列表或字典，您可以按照正常方式遍历它们
